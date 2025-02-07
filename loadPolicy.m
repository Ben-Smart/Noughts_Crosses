%     def loadPolicy(self, file):
%         fr = open(file, 'rb')
%         self.states_value = pickle.load(fr)
%         fr.close()

function loadPolicy(self)
    load(['policy_' num2str(self.name)],['policy_' num2str(self.name)])
end


