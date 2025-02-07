%     def savePolicy(self):
%         fw = open('policy_' + str(self.name), 'wb')
%         pickle.dump(self.states_value, fw)
%         fw.close()

function savePolicy(self)

    save(['policy_' num2str(self.name)]);

end


